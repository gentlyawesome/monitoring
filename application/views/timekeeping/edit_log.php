<?=form_open('', '');?>
<div class="table-responsive">
	<table class="table">
		<tr>
			<th>Type</th>
			<th>Date</th>
			<th>Time</th>
		</tr>
		<?if($tkm):?>

			<?foreach ($tkm as $key => $value):?>
				
				<tr>
					<td><?=$value->logtype?></td>
					<td><?=$value->date?></td>
					<td><input type="text" name="time[<?=$value->id?>]" value="<?=$value->time?>" id="time_<?=$value->id?>" size="5"></td>
				</tr>		
		
			<?endforeach;?>

		<?endif;?>
	</table>
</div>
<div class="btn-group">
	<label for="mySubmit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>&nbsp; Save</label>
	<input id="mySubmit" type="submit" value="Save" name="save" class="hidden" />
	<a class="btn btn-sm btn-default" href="<?=site_url('timekeeping')?>">Back</a>
</div>
</form>