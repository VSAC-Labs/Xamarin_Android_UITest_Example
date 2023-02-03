# AppCenter Xamrain Test Example - UITest for Android
## Instructions
Note: To avoid building the project in VS, use the APK from the "CompliedBinary" folder in this project repo.
### Complete the [Getting Started](https://docs.microsoft.com/en-us/appcenter/test-cloud/getting-started) instructions.
### Build The Solution
* Clone the project
* Build the project. This version used VS 2022.
* Archive the AppCenterXamrain_Test_Example project. Remember the location of the .APK file for use later.
### Create a Device Set in App Center Test portal
* [AppCenter Portal](https://appcenter.ms)
* Navigate to Test on the right hand webpage pane and select "Test runs"
* Create a New Device Set
* Select your devices. (This sample will only work with Android)
* Give the Device Set a name
* Click "New device set"
### Create a Test Series in App Center Test
* Click the Test Series button via the [AppCenter Portal](https://appcenter.ms)
* Give the Test Series a name. This sample used "das-examples".
### Create a New Test Run
* Click New test run button via the [AppCenter Portal](https://appcenter.ms)
* Select the device set you created earlier 
* Choose the Test Series you created before
* Select Xamarin.UITest for Test Framework
* Install Node.js if not already installed
* Install the AppCenter-cli (npm)
* The AppCenter-CLI will require an access token. From a commandline prompt, run ``` appcenter login ``` to get started.
* Copy the "appcenter test run uitest" command 
### Initiate a Test Run via AppCenter-CLI
Example Usage:
```
appcenter test run uitest 
--app "Examples/Android_Xamarin_UI_Test" 
--devices "Examples/tdevere-device-set-1-dc1ea1" 
--app-path "C:\Repos\AppCenterXamrain_Test_Example\CompliedBinary\com.companyname.appcenterxamrain_test_example.apk" 
--test-series "das-examples" 
--locale "en_US" 
--build-dir "C:\Repos\AppCenterXamrain_Test_Example\UITestProject\bin\Release" 
--uitest-tools-dir "C:\Users\antho\.nuget\packages\xamarin.uitest\3.2.2\tools"
```

Parameters Defined
```
--app - this parameter contains the name of app on the AppCenter portal.
--devices - this parameter contains the device set on the AppCenter portal.
--app-path - comlete path to APK. This sample has the .APK moved to the CompliedBinary folder within the project.
--test-series - this parameter contains the set of tests from AppCenter portal
--uitest-tools-dir this parameter contains the path to UITest directory where storing Test tools like NUnit. 
--build-dir - the path to the UITestProject Build Directory
```

### Start Tests
You should see something similar to this output when the test is starting up
```
Preparing tests... done.
Validating arguments... done.
Creating new test run... done.
Validating application file... done.
Uploading files... done.
Starting test run... done.
Test run id: "*****"
Accepted devices:
  - Samsung Galaxy Note 20 Ultra (12)
```
### Test Completes
When the test run has completed, you will see a "Test Report" URL link. This will bring you to the App Center portal where you can examine the test run in greater detail.
