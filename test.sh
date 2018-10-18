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

test_print_str() {
    hb::bold_str "bold"
    printf '\n'

    hb::faint_str "faint"
    printf '\n'

    hb::italic_str "italic"
    printf '\n'

    hb::underline_str "underline"
    printf '\n'

    hb::slow_blink_str "slow_blink"
    printf '\n'

    hb::swap_bg_str "swap_bg"
    printf '\n'
}

test_progress_bar() {
    for ((i=0;i<=100;i++)); do
        # Pure bash micro sleeps (for the example).
        (:;:) && (:;:) && (:;:) && (:;:) && (:;:)

        # Print the bar.
        hb::progress_bar "$i" "10"
    done
}

test_get_functions() {
    printf '\nAll functions:\n'
    hb::get_functions
    printf '\nEnd\n'
}



hb::run_all_tests
