var DinnerForm = React.createClass({
  render : function() {
    return(
      <form action="/dinners" className="new_dinner">
        <label for="dinner_name">name</label>
        <input type="text" name="dinner[name]" id="dinner_name"/>
        <input type="submit" name="commit" value="save"/>
      </form>
    );
  }


});