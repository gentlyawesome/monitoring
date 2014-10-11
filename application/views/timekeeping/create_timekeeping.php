<?=form_open('', 'class="form-horizontal"');?>
<fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Employees</label>  
  <div class="col-md-4">
  <?=form_dropdown('data[empid]', $employee_list,'','required');?>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Date</label>  
  <div class="col-md-4">
  <input id="date" name="data[date]" type="text" placeholder="yy-mm-dd" class="date_pick form-control input-md" required> 
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id">Double Button</label>
  <div class="col-md-8">
    <label for="mySubmit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>&nbsp; Save</label>
	<input id="mySubmit" type="submit" value="Save" name="save" class="hidden" />
	<a class="btn btn-sm btn-default" href="<?=site_url('timekeeping')?>">Back</a>
  </div>
</div>

</fieldset>
</form>