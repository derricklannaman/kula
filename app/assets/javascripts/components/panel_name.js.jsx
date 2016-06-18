var PanelName = React.createClass({
  render : function() {
    return(
      <h1 className="panel-title">{this.props.name}</h1>
    );
  }
});