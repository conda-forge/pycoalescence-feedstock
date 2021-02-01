#!/usr/bin/env bash

# PLEASE NOTE: This script has been automatically generated by conda-smithy. Any changes here
# will be lost next time ``conda smithy rerender`` is run. If you would like to make permanent
# changes to this script, consider a proposal to conda-smithy so that other feedstocks can also
# benefit from the improvement.

set -xeuo pipefail
export PYTHONUNBUFFERED=1
export FEEDSTOCK_ROOT="${FEEDSTOCK_ROOT:-/home/conda/feedstock_root}"
export RECIPE_ROOT="${RECIPE_ROOT:-/home/conda/recipe_root}"
export CI_SUPPORT="${FEEDSTOCK_ROOT}/.ci_support"
export CONFIG_FILE="${CI_SUPPORT}/${CONFIG}.yaml"

cat >~/.condarc <<CONDARC

conda-build:
 root-dir: ${FEEDSTOCK_ROOT}/build_artifacts

CONDARC

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 8aa0598 (Rerendered with conda-forge)
=======
<<<<<<< HEAD
>>>>>>> 5e4b5e2 (Re-rendered with conda smithy)
=======
<<<<<<< HEAD
>>>>>>> 5931514 (Updated to 1.2.7post14)
conda install --yes --quiet "conda-forge-ci-setup=3" conda-build pip -c conda-forge
<<<<<<< HEAD
=======
=======
conda install --yes --quiet conda-forge-ci-setup=3 conda-build pip -c conda-forge
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 04268ed (Re-rendered with conda smithy)
=======

<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge

>>>>>>> Rerendered with conda-forge
=======
conda install --yes --quiet conda-forge-ci-setup=3 conda-build pip -c conda-forge
>>>>>>> Re-rendered with conda smithy
=======
>>>>>>> fc77e24... Rerendered with conda-forge
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge
=======
=======
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> Re-rendered with conda smithy
=======
>>>>>>> MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36
=======
conda install --yes --quiet "conda-forge-ci-setup=3" conda-build pip -c conda-forge
>>>>>>> Updated to 1.2.7post14
=======
=======

>>>>>>> fc77e24... Rerendered with conda-forge
>>>>>>> fa8a94f (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 1ee76d8 (Rerendered with conda-forge)
=======
=======
=======
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> 04268ed (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 99ef6e6 (Re-rendered with conda smithy)
=======
=======
=======

>>>>>>> Rerendered with conda-forge
>>>>>>> 5bd6ac8 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 02042b7 (Rerendered with conda-forge)
=======
=======
conda install --yes --quiet conda-forge-ci-setup=3 conda-build pip -c conda-forge

>>>>>>> fc77e24 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 8aa0598 (Rerendered with conda-forge)
=======
=======
conda install --yes --quiet conda-forge-ci-setup=3 conda-build pip -c conda-forge
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
conda install --yes --quiet "conda-forge-ci-setup=3" conda-build pip -c conda-forge
>>>>>>> 16a86d6 (Updated to 1.2.7post14)
>>>>>>> 5931514 (Updated to 1.2.7post14)

# set up the condarc
setup_conda_rc "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"

source run_conda_forge_build_setup


# Install the yum requirements defined canonically in the
# "recipe/yum_requirements.txt" file. After updating that file,
# run "conda smithy rerender" and this line will be updated
# automatically.
/usr/bin/sudo -n yum install -y xorg-x11-server-Xorg


# make the build number clobber
make_build_number "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

<<<<<<< HEAD
if [[ "${BUILD_WITH_CONDA_DEBUG:-0}" == 1 ]]; then
    if [[ "x${BUILD_OUTPUT_ID:-}" != "x" ]]; then
        EXTRA_CB_OPTIONS="${EXTRA_CB_OPTIONS:-} --output-id ${BUILD_OUTPUT_ID}"
    fi
    conda debug "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    # Drop into an interactive shell
    /bin/bash
else
    conda build "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        --suppress-variables ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    validate_recipe_outputs "${FEEDSTOCK_NAME}"

    if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
        upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}"  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
    fi
=======
if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
    upload_package  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge
=======
>>>>>>> Rerendered with conda-forge
=======
conda build "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
    --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36
=======
>>>>>>> 04268ed (Re-rendered with conda smithy)
=======
>>>>>>> 2b0ab3a (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
validate_recipe_outputs "pycoalescence-feedstock"
>>>>>>> Re-rendered with conda smithy

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
<<<<<<< HEAD
<<<<<<< HEAD
    upload_package "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> Re-rendered with conda smithy
=======
    upload_package  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
<<<<<<< HEAD
>>>>>>> Rerendered with conda-forge
=======
=======

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
<<<<<<< HEAD
<<<<<<< HEAD
    upload_package "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> Re-rendered with conda smithy
=======
    upload_package --validate --feedstock-name="pycoalescence-feedstock" "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36
=======
>>>>>>> bef9287 (Rerendered with conda-forge)

if [[ "${BUILD_WITH_CONDA_DEBUG:-0}" == 1 ]]; then
    if [[ "x${BUILD_OUTPUT_ID:-}" != "x" ]]; then
        EXTRA_CB_OPTIONS="${EXTRA_CB_OPTIONS:-} --output-id ${BUILD_OUTPUT_ID}"
    fi
    conda debug "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    # Drop into an interactive shell
    /bin/bash
else
    conda build "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        --suppress-variables ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    validate_recipe_outputs "${FEEDSTOCK_NAME}"

    if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
        upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}"  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
    fi
<<<<<<< HEAD
=======
>>>>>>> Updated to 1.2.7post14
=======
    upload_package  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
<<<<<<< HEAD
>>>>>>> 6b951ff (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> bef9287 (Rerendered with conda-forge)
=======
=======
=======

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
<<<<<<< HEAD
<<<<<<< HEAD
    upload_package "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> 9f152c5... Re-rendered with conda smithy
>>>>>>> 04268ed (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 99ef6e6 (Re-rendered with conda smithy)
=======
=======
    upload_package  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> 5bd6ac8 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 02042b7 (Rerendered with conda-forge)
=======
=======
    upload_package  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> fc77e24 (Rerendered with conda-forge)
<<<<<<< HEAD
>>>>>>> 8aa0598 (Rerendered with conda-forge)
=======
=======
conda build "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
    --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"

if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
    upload_package "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> 9f152c5 (Re-rendered with conda smithy)
<<<<<<< HEAD
>>>>>>> 5e4b5e2 (Re-rendered with conda smithy)
=======
=======
    upload_package --validate --feedstock-name="pycoalescence-feedstock" "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
>>>>>>> 2b0ab3a (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
<<<<<<< HEAD
>>>>>>> 10b5786 (MNT: Re-rendered with conda-build 3.18.9, conda-smithy 3.7.3, and conda-forge-pinning 2020.05.19.09.34.36)
=======
=======

if [[ "${BUILD_WITH_CONDA_DEBUG:-0}" == 1 ]]; then
    if [[ "x${BUILD_OUTPUT_ID:-}" != "x" ]]; then
        EXTRA_CB_OPTIONS="${EXTRA_CB_OPTIONS:-} --output-id ${BUILD_OUTPUT_ID}"
    fi
    conda debug "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    # Drop into an interactive shell
    /bin/bash
else
    conda build "${RECIPE_ROOT}" -m "${CI_SUPPORT}/${CONFIG}.yaml" \
        --suppress-variables ${EXTRA_CB_OPTIONS:-} \
        --clobber-file "${CI_SUPPORT}/clobber_${CONFIG}.yaml"
    validate_recipe_outputs "${FEEDSTOCK_NAME}"

    if [[ "${UPLOAD_PACKAGES}" != "False" ]]; then
        upload_package --validate --feedstock-name="${FEEDSTOCK_NAME}"  "${FEEDSTOCK_ROOT}" "${RECIPE_ROOT}" "${CONFIG_FILE}"
    fi
>>>>>>> 16a86d6 (Updated to 1.2.7post14)
>>>>>>> 5931514 (Updated to 1.2.7post14)
fi

touch "${FEEDSTOCK_ROOT}/build_artifacts/conda-forge-build-done-${CONFIG}"