//  
//    First draft.  
//    This is not a deployment contract
//    strictly alfa!!!
//


contract Pretorian {

   etherReal_Smart_ID root;
   address public rootOwner;
   address public rootAddress;

   mapping(address => bool) public isSmartID; 
   mapping(address => string) public smartIDnames;
   mapping(address => string) public smartIDid;
   mapping(address => string) public smartIDpassport;

function Pretorian(string name,string id,string passport){
  rootAddress=new etherReal_Smart_ID(msg.sender,name,id,passport);
  isSmartID[rootAddress]=true;
  smartIDnames[rootAddress]=name;
  smartIDnames[rootAddress]=id;
  smartIDid[rootAddress]=passport;
  rootOwner=msg.sender;
}

function registerSmartID(address smartIDadd,string name,string id,string passport) returns (bool){
if(!isSmartID[msg.sender])throw;
  address smartIDaddr=new etherReal_Smart_ID(msg.sender,name,id,passport);
  isSmartID[smartIDaddr]=true;
  smartIDnames[smartIDaddr]=name;
  smartIDnames[smartIDaddr]=id;
  smartIDid[smartIDaddr]=passport;

}

function WHOIS(address a)constant returns(bool,string,string,string){
return(isSmartID[a],smartIDnames[a],smartIDid[a],smartIDpassport[a]);
}


}


