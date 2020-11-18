# This Folder includeds the additional files needed to deploy the WAR file on a persanal Computer

## How to get initial admin account
<p>
   <ul>
     <li>Run the Web app one time to create the relevent tables</li>
     <li>Open the H2 Console</li>
     <li>Select Generic H2 Server from saved Settings</li>
     <li>Add new Rows to Authority and User tables</li>
     <li>User Table: ENABLED = true, username = any, password = any</li>
     <li>Authority Table: AUTHORITY = ROLE_ADMIN, username = same as the username in user table</li>
     <li>use the username and the password given to login as an ADMIN</li>
     <li>use the admin account to create ride leaders, rideouts, admins</li>
   </ul>
</p>
