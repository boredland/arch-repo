#!/bin/bash
substitute () {
    sed -i "s/OWNER/${OWNER}/g" $1
    sed -i "s/REPO/${REPO}/g" $1
    sed -i "s/TIMESTAMP/$(date)/g" $1
}