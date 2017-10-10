const token = 'b06292c9399bd6848b5cf20cd878e116'

var getGames = () => {
  var searchTerms = $("#searchTerms").val()
  $.get('https://api-2445582011268.apicast.io/games/search?token=' + `${token}` + '&q='+ `${searchTerms}`, data => {
    $("#results").html(allSearchResults(data))
  }).fail(error => {
    displayError()
  })
}

var displayError = () => $('#errors').html("Something went wrong. Please try again.")

var allSearchResults = (data) => data.items.map( result => renderSearchResult(result))

var renderSearchResult = (result) => {
  return `
  <div>
    <h2>${result.name}</h2>
  </div>
    `
}

$(document).ready(function (){

});
