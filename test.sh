#!/usr/bin/env bash

source hb_assert
source hb_test
source hb_utils

test_assert_eq_fail() {
hb::assert_eq 1 2
}

test_assert_eq_pass() {
hb::assert_eq 1 1
}

test_dashed_print() {
    res=$(hb::print_dashed "Hello")
    hb::assert_eq "$res" $'\nHello\n-----'

    res=$(hb::print_dashed "")
    hb::assert_eq "$res" $''
}


hb::run_all_tests
