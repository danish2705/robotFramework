*** Settings ***
Library           RequestsLibrary
Library           Collections

*** Variables ***
${base_url}       https://reqres.in/api
${page_id}        2

*** Test Cases ***
Quick Get Request Test
    Create Session    reqres    ${base_url}    verify=False
    ${response}=      GET On Session    reqres    /users    params=page=${page_id}
    Log To Console    ${response.json()}
    Should Be Equal As Strings    ${response.json()['per_page']}    6
    Should Be Equal As Strings    ${response.json()['total']}      12
    Should Be Equal As Strings    ${response.json()['data'][0]['id']}    7
