<html>
<head><script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script></head>
<h2>Species: </h2>

<script type="text/javascript">
$(document).ready(function () {
    $('#checkBtn').click(function() {
      checkedSpecies = $("input[name=species]:checked").length;
      checkedAge = $("input[name=age]:checked").length;
      if(!checkedSpecies) {
        alert("You must check at least one SPECIES checkbox.");
        return false;
      }
      if(!checkedAge) {
          alert("You must check at least one AGE checkbox.");
          return false;
        }

    });
});

</script>
<form ACTION="AnimalResults.jsp" method = get>
	<input type="checkbox" name = species value="cat"> Cat
	<input type="checkbox" name = species value="bird"> Bird
	<input type="checkbox" name = species value="hamster"> Hamster
	<input type="checkbox" name = species value="mouse"> Mouse
	<input type="checkbox" name = species value="rat"> Rat<BR>
	<input type="checkbox" name = species value="ferret"> Ferret
	<input type="checkbox" name = species value="dog"> Dog
	<input type="checkbox" name = species value="rabbit"> Rabbit
	<input type="checkbox" name = species value="tortoise"> Tortoise
	<input type="checkbox" name = species value="turtle"> Turtle

	<h2>Age: </h2>

	<input type="checkbox" name = age value="Baby"> Baby
	<input type="checkbox" name = age value="Adult"> Adult
	<input type="checkbox" name = age value="Senior"> Senior<BR>	

	<h2>Medical Record: </h2>
	<input type="checkbox" name = vaccinated value="Vaccinated"> Vaccinated
	<input type="checkbox" name = fixed value="Fixed"> Fixed<BR>
	
	<h2>Status: </h2>
	
	<input type="checkbox" name = available value="Available"> Available
	<input type="checkbox" name = inFoster value="In Foster"> In Foster
	<input type="checkbox" name = adopted value="Adopted"> Adopted<BR>

	<input type="submit" value="Submit" id = checkBtn>
</form>

</html>