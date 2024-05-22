BIN           := $(PWD)/_bin
PATH          := $(BIN):$(PATH)
SHELL         := env PATH=$(PATH) /bin/sh

os       ?= $(shell uname|tr A-Z a-z)
ifeq ($(shell uname -m),x86_64)
  arch   ?= amd64
endif
ifeq ($(shell uname -m),i686)
  arch   ?= 386
endif
ifeq ($(shell uname -m),aarch64)
  arch   ?= arm
endif
ifeq ($(shell uname -m),arm64)
  arch   ?= arm64
endif

.PHONY: all
all: tools test

.PHONY: tools
tools: $(BIN)/terraform

# Setup Terraform
terraform_version      := 1.8.4
terraform_package_name := terraform_$(terraform_version)_$(os)_$(arch).zip
terraform_package_url  := https://releases.hashicorp.com/terraform/$(terraform_version)/$(terraform_package_name)
terraform_install_path := $(BIN)/terraform-$(terraform_version)-$(os)-$(arch)

$(BIN)/terraform:
	@mkdir -p $(BIN)
	@echo "Downloading Terraform $(terraform_version) to $(terraform_install_path)..."
	@curl --silent --show-error --fail --create-dirs --output-dir $(BIN) -O -L $(terraform_package_url)
	@unzip $(BIN)/$(terraform_package_name) -d $(terraform_install_path) && rm $(BIN)/$(terraform_package_name)
	@ln -s $(terraform_install_path)/terraform $(BIN)/terraform

.PHONY: test
test:
	@echo "Testing..."
	@terraform --version

.PHONY: clean
clean:
	@echo "Removing the $(BIN) directory..."
	@rm -rf $(BIN)
