/*
TODO: Refactor/Correct how the TierLevel of this user is returned.
*/

void main() {

}

String getTierLevel(String tierLevel) {
  String level = "TIER_ONE";

  if(tierLevel == "TIER_ONE") {
    level = tierLevel; 
  } else if (tierLevel == "TIER_TWO") {
    level = tierLevel; 
  } else if (tierLevel == "TIER_THREE") {
    level = tierLevel; 
  } else {
    level = tierLevel; 
  }

  return level;
}