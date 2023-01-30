import 'dart:collection';

String checkFlames(String boysName, String girlsName) {
  final Map<String, int> mp = HashMap();

  int girlsNameLength = girlsName.length;
  int boysNameLength = 0;

  for (int i = 0; i < boysName.length; i++) {
    mp[boysName[i]] = mp[boysName[i]] != null ? mp[boysName[i]]! + 1 : 1;
  }
  for (int i = 0; i < girlsName.length; i++) {
    if (mp.containsKey(girlsName[i]) && mp[girlsName[i]] != 0) {
      mp[girlsName[i]] = mp[girlsName[i]]! - 1;
      girlsNameLength--;
    }
  }

  for (int i = 0; i < mp.length; i++) {
    boysNameLength = boysNameLength + mp[boysName[i]]!;
  }
  int finalLength = boysNameLength + girlsNameLength;

  String array =
      "FLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMESFLAMES";

  String letter = array[finalLength];

  switch(letter){
   case 'F':
    return "Friends";
      
 case 'L':
    return "Lovers";
      
 case 'A':
    return "Affair";
      
 case 'M':
    return "Marriage";
      
 case 'E':
    return "Enemies";
      
 case 'S':
 return "Siblings";
 
 default:
 return "Invalid";
    
  }
  
}
