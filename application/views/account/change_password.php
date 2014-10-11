<?echo form_open('','class="form-horizontal"')?>
<fieldset>
<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">New Password</label>
  <div class="col-md-4">
    <input id="new_secreto" name="new_secreto" type="password" placeholder="New Password" class="form-control input-md" value="<?=isset($new_secreto)?$new_secreto:''?>" required>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">Confirm Password</label>
  <div class="col-md-4">
    <input id="con_secreto" name="con_secreto" type="password" placeholder="Confirm Password" class="form-control input-md" value="<?=isset($con_secreto)?$con_secreto:''?>" required>
  </div>
</div>
<hr class="hr">
<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">Current Password</label>
  <div class="col-md-4">
    <input id="old_secreto" name="old_secreto" type="password" placeholder="Current Password" class="form-control input-md" value="<?=isset($old_secreto)?$old_secreto:''?>" required>
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id">Action</label>
  <div class="col-md-8">
    <input type="submit" name="change_secreto" id="change_secreto" value="SAVE" class="btn btn-sm" />
  </div>
</div>

</fieldset>
</form>
