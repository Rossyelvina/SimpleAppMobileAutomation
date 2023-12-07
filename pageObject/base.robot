*** Settings ***
Library                AppiumLibrary
Library                OperatingSystem
Library                Telnet


*** Variables ***
${remote_url}                      http://127.0.0.1:4723/wd/hub
${platformName}                    Android
${platformVersion}                 12.0
${deviceName}                      device
${udid}                            emulator-5554
${app}


*** Keywords ***
Open Application
    Open Application               remote_url=${remote_url}
    ...                            platformName=${platformName}
    ...                            platformVersion=${platformVersion}
    ...                            deviceName=${deviceName}
    ...                            udid=${udid}
    ...                            automationName=${UiAutomator2}

Close Application
    Close Application             
