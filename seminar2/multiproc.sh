#! /bin/bash

export SUBJECTS_DIR=/workspace
export input_path=/workspace/data/raw

ids=()

for dirname in /${input_path}/*; do

    subj_id=${dirname#/${input_path}/}  # remove "/input/sub-"
    subj_id=${subj_id%/}  # remove trailing "/"

    if [[ ! -d "/output/$subj_id" ]]; then
        ids+=( "$subj_id" )
    fi
done

printf 'Found ID: %s\n' "${ids[@]}" >&2

printf '%s\n' "${ids[@]}" | parallel --jobs 10 --timeout 250% --progress recon-all -expert /workspace/data/expert.opts -s {.} -i ${input_path}/{.}/unprocessed/3T/T1w_MPR1/{.}_3T_T1w_MPR1.nii.gz -all -qcache