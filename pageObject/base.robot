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
${app}                             ${EXECDIR}/APP/sample-apk (1).apk
${automationName}                  UiAutomator2


*** Keywords ***
Open Simple App Application
    Open Application              remote_url=${remote_url}
    ...                           platformName=${platformName}
    ...                           platformVersion=${platformVersion}
    ...                           deviceName=${deviceName}
    ...                           udid=${udid}
    ...                           app=${app}
    ...                           automationName=${automationName}
Close Simple App Application
    Close Application             
