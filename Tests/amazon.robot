*** Settings ***
Documentation  This is some basic info about the whole test suite
Resource  ../Resources/Keywords.robot
Library  SeleniumLibrary
Test Setup   Begin Web Test
Test Teardown   End Web Test
Documentation   This is some basic info about the whole test suite
Resource   ../Resources/Keywords.robot
Library   SeleniumLibrary
Suite Setup   Begin Web Test
Suite Teardown   End Web Test

*** Variables ***
${BROWSER} =   chrome
${URL} =    https://www.amazon.com

*** Test Cases ***
User can access amazon.com
  [Documentation]   This is some basic info about the test
   [Tags]   Test 1
  Go To Web Page


User can conduct a search
  [Documentation]   This is some basic info about the test
   [Tags]   Test 2
  Go To Web Page
  Search for Product  ferrari 458   results for "ferrari 458"


User can conduct another search
  [Documentation]   This is some basic info about the test
   [Tags]   Test 3
  Go To Web Page
  Search for Product  tesla model x   results for "tesla model x"
