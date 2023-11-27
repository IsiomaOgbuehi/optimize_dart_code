/*
Test: UPDATE API MODEL TO WORK WITH CURRENT AND FUTURE CHANGE FROM API.
Case: You have an api model requiring a change. But you are required to make an implementation that work for
both current and future update on the api.

Current API:

{
  id: "8756414f-0730-4d4c-ae81-fd16eebb72ef",
  mobile: "08011111111",
  firstName: "Aku",
  lastName: "Developer",
  role: "CUSTOMER",
  level: "LEVEL_ONE"
}

other expected/possible role values: TRADER, AGENT
other expected/possible levels: LEVEL_2, LEVEL_3
*/

// CURRENT API MODEL
class User {
  const User({
    this.id,
    this.mobile,
    this.firstName,
    this.lastName,
    this.role,
    this.level,
  });

  final String? id;
  final String? mobile;
  final String? firstName;
  final String? lastName;
  final String? role;
  final String? level;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] ?? '',
    mobile: json["mobile"] ?? '',
    firstName: json["firstName"] ?? '',
    lastName: json["lastName"] ?? '',
    role: json["role"] ?? '',
    level: json["level"] ?? ''
  );
}

/* 
In the future the api will look like this:

{
  id: "8756414f-0730-4d4c-ae81-fd16eebb72ef",
  mobile: "08011111111",
  firstName: "Aku",
  lastName: "Developer",
  roles: ["CUSTOMER", "TRADER", "AGENT"],
  namespace: "role",
  level: "LEVEL_ONE"
}

TO DO: Update the model with best practices to work for both current and future API change without need to
rebuild the application
 */
