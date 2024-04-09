#!/bin/bash

set -e

function unit_test() {
	echo "Running unit test"
	return 1; 
}

function integration_test() {
	echo "Running integration test"
	return 0;
}

function e2e_test() {
	echo "Running end to end test"
	return 0;
}

unit_test
integration_test
e2e_test
