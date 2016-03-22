function valid()
{ 
	
   if((Reservation.Journey.type[0].checked == false) && (Reservation.Journey.type[1].checked == false))
   {
   alert ("Please choose your Journey type: One way or  Return");
   document.Registration.Journey.focus();

   return false;
   }   
   
   if(document.Reservation.From.value == "-1")
   {
     alert("Please provide your From!");
     document.Reservation.From.focus();
     return false;
   } 
   if(document.Reservation.To.value == "-1")
   {
     alert("Please provide your To!");
     document.Reservation.To.focus() ;
     return false;
   }
    if(document.Reservation.Cabin.value == "-1")
   {
     alert("Please provide your Cabin!");
     document.Reservation.Cabin.focus();
     return false;
   }   
      
   return(true);
}
   