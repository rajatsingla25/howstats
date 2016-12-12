// change_value.js
var change = function(config)
{
	this.ele = document.getElementById(config.id); 
	this.val = config.i;
	this.final_value = config.f;
	this.update_interval = config.time/(this.final_value - this.val);
	this.intervalId = -1;
	
	this.ele.innerHTML = this.val;

	this.intervalId = 
	  setInterval(this.make_change.bind(this),this.update_interval);

};

change.prototype.make_change = function()
{
	this.val += 1;
	if(this.val>=this.final_value)
	{
		clearInterval(this.intervalId);
		this.val = this.final_value;
	}
	// console.log(val);
	this.ele.innerHTML = this.val;
};