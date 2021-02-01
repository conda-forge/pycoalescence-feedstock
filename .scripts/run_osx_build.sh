#!/usr/bin/env bash

set -x

echo -e "\n\nInstalling a fresh version of Miniforge."
if [[ ${CI} == "travis" ]]; then
  echo -en 'travis_fold:start:install_miniforge\\r'
fi
MINIFORGE_URL="https://github.com/conda-forge/miniforge/releases/latest/download"
MINIFORGE_FILE="Miniforge3-MacOSX-x86_64.sh"
curl -L -O "${MINIFORGE_URL}/${MINIFORGE_FILE}"
bash $MINIFORGE_FILE -b
if [[ ${CI} == "travis" ]]; then
  echo -en 'travis_fold:end:install_miniforge\\r'
fi

echo -e "\n\nConfiguring conda."
if [[ ${CI} == "travis" ]]; then
  echo -en 'travis_fold:start:configure_conda\\r'
fi

source ${HOME}/miniforge3/etc/profile.d/conda.sh
conda activate base

echo -e "\n\nInstalling conda-forge-ci-setup=3 and conda-build."
<<<<<<< HEAD
conda install -n base --quiet --yes "conda-forge-ci-setup=3" conda-build pip
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
conda install -n base --quiet --yes "conda-forge-ci-setup=3" conda-build pip
=======
conda install -n base --quiet --yes conda-forge-ci-setup=3 conda-build pip
>>>>>>> Rerendered with conda-forge
=======
conda install -n base --quiet --yes conda-forge-ci-setup=3 conda-build pip
>>>>>>> Re-rendered with conda smithy
=======
conda install -n base --quiet --yes "conda-forge-ci-setup=3" conda-build pip
>>>>>>> Updated to 1.2.7post14
=======
conda install -n base --quiet --yes conda-forge-ci-setup=3 conda-build pip
>>>>>>> fc77e24 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 8aa0598 (Rerendered with conda-forge)
=======
=======
conda install -n base --quiet --yes conda-forge-ci-setup=3 conda-build pip
>>>>>>> 9f152c5 (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 5e4b5e2 (Re-rendered with conda smithy)
=======
=======
conda install -n base --quiet --yes "conda-forge-ci-setup=3" conda-build pip
>>>>>>> 16a86d6 (Updated to 1.2.7post14)
<<<<<<< HEAD
>>>>>>> 5931514 (Updated to 1.2.7post14)
=======
=======
conda install -n base --quiet --yes "conda-forge-ci-setup=3" conda-build pip
>>>>>>> 87e1db5 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.8.6, and conda-forge-pinning 2021.01.31.00.18.44)
>>>>>>> c7f1b73 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.8.6, and conda-forge-pinning 2021.01.31.00.18.44)



echo -e "\n\nSetting up the condarc and mangling the compiler."
setup_conda_rc ./ ./recipe ./.ci_support/${CONFIG}.yaml
mangle_compiler ./ ./recipe .ci_support/${CONFIG}.yaml

echo -e "\n\nMangling homebrew in the CI to avoid conflicts."
/usr/bin/sudo mangle_homebrew
/usr/bin/sudo -k

echo -e "\n\nRunning the build setup script."
source run_conda_forge_build_setup


if [[ ${CI} == "travis" ]]; then
  echo -en 'travis_fold:end:configure_conda\\r'
fi

set -e

echo -e "\n\nMaking the build clobber file and running the build."
make_build_number ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --suppress-variables --clobber-file ./.ci_support/clobber_${CONFIG}.yaml ${EXTRA_CB_OPTIONS:-}
validate_recipe_outputs "${FEEDSTOCK_NAME}"

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}" ./ ./recipe ./.ci_support/${CONFIG}.yaml
=======
=======
>>>>>>> Re-rendered with conda smithy
conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --clobber-file ./.ci_support/clobber_${CONFIG}.yaml
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package  ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge
=======
>>>>>>> Re-rendered with conda smithy
=======
=======
>>>>>>> Re-rendered with conda smithy
<<<<<<< HEAD
=======
>>>>>>> MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36
=======
>>>>>>> fa8a94f (Rerendered with conda-forge)
=======
>>>>>>> 04268ed (Re-rendered with conda smithy)
=======
>>>>>>> 2b0ab3a (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
validate_recipe_outputs "pycoalescence-feedstock"

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package --validate --feedstock-name="pycoalescence-feedstock" ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
>>>>>>> 9f152c5... Re-rendered with conda smithy
=======
=======
>>>>>>> fa8a94f (Rerendered with conda-forge)
=======
=======
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> 04268ed (Re-rendered with conda smithy)
=======
conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --clobber-file ./.ci_support/clobber_${CONFIG}.yaml
>>>>>>> fc77e24 (Rerendered with conda-forge)
=======
conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --clobber-file ./.ci_support/clobber_${CONFIG}.yaml
>>>>>>> 9f152c5 (Re-rendered with conda smithy)

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package  ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> fc77e24... Rerendered with conda-forge
<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge
=======
=======
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> Re-rendered with conda smithy
=======
>>>>>>> MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36
=======
>>>>>>> 1ee76d8 (Rerendered with conda-forge)

conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --suppress-variables --clobber-file ./.ci_support/clobber_${CONFIG}.yaml ${EXTRA_CB_OPTIONS:-}
validate_recipe_outputs "${FEEDSTOCK_NAME}"

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}" ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
=======
>>>>>>> Updated to 1.2.7post14
=======
>>>>>>> fc77e24... Rerendered with conda-forge
>>>>>>> fa8a94f (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 1ee76d8 (Rerendered with conda-forge)
=======
=======
>>>>>>> fc77e24... Rerendered with conda-forge
=======
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> 04268ed (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 99ef6e6 (Re-rendered with conda smithy)
=======
=======
>>>>>>> fc77e24 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 8aa0598 (Rerendered with conda-forge)
=======
=======
>>>>>>> 9f152c5 (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 5e4b5e2 (Re-rendered with conda smithy)
=======
=======
>>>>>>> 2b0ab3a (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
<<<<<<< HEAD
>>>>>>> 10b5786 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
=======
=======
=======
>>>>>>> 87e1db5 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.8.6, and conda-forge-pinning 2021.01.31.00.18.44)

conda build ./recipe -m ./.ci_support/${CONFIG}.yaml --suppress-variables --clobber-file ./.ci_support/clobber_${CONFIG}.yaml ${EXTRA_CB_OPTIONS:-}
validate_recipe_outputs "${FEEDSTOCK_NAME}"

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
  echo -e "\n\nUploading the packages."
  upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}" ./ ./recipe ./.ci_support/${CONFIG}.yaml
<<<<<<< HEAD
>>>>>>> 16a86d6 (Updated to 1.2.7post14)
<<<<<<< HEAD
>>>>>>> 5931514 (Updated to 1.2.7post14)
=======
=======
>>>>>>> 87e1db5 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.8.6, and conda-forge-pinning 2021.01.31.00.18.44)
>>>>>>> c7f1b73 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.8.6, and conda-forge-pinning 2021.01.31.00.18.44)
fi