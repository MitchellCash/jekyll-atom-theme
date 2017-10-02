## This file is licensed under the MIT License (MIT) available on
## http://opensource.org/licenses/MIT.

S=@  ## Silent: only print errors by default;
     ## run `make S='' [other args]` to print commands as they're run

JEKYLL_LOG=._jekyll.log

#######################
## REGULAR ARGUMENTS ##
#######################

## `make` (no arguments): just build the theme preview site
default: clean build

## `make preview`: start the built-in Jekyll preview for the theme preview site
preview: clean
	$S export LANG=C.UTF-8 ; bundle exec jekyll serve --config docs/_config.dev.yml --source docs/ --destination docs/_site --incremental

## `make` (no arguments): just build the theme test site
dev: dev-clean dev-build

## `make preview`: start the built-in Jekyll preview for the the theme test site
dev-preview: dev-clean
	$S export LANG=C.UTF-8 ; bundle exec jekyll serve --config test/_config.yml --source test/ --destination test/_site --incremental


#################
## SUB-TARGETS ##
#################

clean:
	$S bundle exec jekyll clean --config docs/_config.dev.yml --source docs/ --destination docs/_site

## Always build using the default locale so log messages can be grepped.
## This should not affect webpage output.
build:
	$S export LANG=C.UTF-8 ; bundle exec jekyll build --config docs/_config.dev.yml --source docs/ --destination docs/_site 2>&1 | tee $(JEKYLL_LOG)

dev-clean:
	$S bundle exec jekyll clean --config test/_config.yml --source test/ --destination test/_site

## Always build using the default locale so log messages can be grepped.
## This should not affect webpage output.
dev-build:
	$S export LANG=C.UTF-8 ; bundle exec jekyll build --config test/_config.yml --source test/ --destination test/_site 2>&1 | tee $(JEKYLL_LOG)
