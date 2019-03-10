$(document).ready( function() {

  $('#lol-search-box').on('keyup', function() {

    var searchVal = capitalizeFirstLetter($(this).val());

    $.post("/data/dragonhead/6.24.1/data/en_GB/champion/"+searchVal+".json").done(function(response) {
      console.log(response);
      if (response) {
        // store champion data in variable
        var champion = response;
        var random = getRandomInt(0, champion.data[searchVal].enemytips.length);
        console.log(random);
        var championName = champion.data[searchVal].name;
        var championDesc = champion.data[searchVal].enemytips[random];
        // get the champion icon
        $("#lol-champion-icon").html("<img src='/data/dragonhead/6.24.1/img/champion/"+championName+".png'></img>")
        $("#lol-champion-name").html(championName);
        $("#lol-champion-desc").html("<p>"+championDesc+"</p>")
        $.post("/data/dragonhead/6.24.1/data/en_GB/profileicon.json")
        .done(function(response) {
        
        });
      }
      
    });
  });
});



function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
}