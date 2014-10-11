<div id="right">
	<?php 
		$formAttrib = array('id' => 'search_tk', 'class' => 'form-inline', 'method' => 'GET');
		echo form_open('timekeeping/index/0', $formAttrib);
	?>

	<?if($this->is_admin):?>
	<div class="form-group">
		Employee
	<?=form_dropdown('empid',$employee_list,isset($empid)?$empid:'','id="empid" class="form-control"');?>
	</div>
	<?endif;?>


 <div class="form-group">
 	<input type="checkbox" id='check_dfrom' onclick="check_date(this)" checked>
    <input id="date_from" class="date_filter form-control date_pick" type="text" value="<?=isset($date_from)?$date_from:''?>" name="date_from" placeholder="Date From">
  </div>

  <div class="form-group">
    <input id="date_to" class="date_filter form-control date_pick" type="text" value="<?=isset($date_to)?$date_to:''?>" name="date_to" placeholder="Date To">
  </div>
  <script type="text/javascript">
  	function check_date(data)
  	{
  		var xval = $(data).attr('checked');
  		if(xval){
  			$('.date_filter').attr('disabled',false);
  		}else{
  			$('.date_filter').attr('disabled',true);
  		}
  	}
  </script>
  
   		<?php echo form_submit('submit', 'Search','class="btn btn-sm"'); ?>
   		<?if($this->is_admin):?>
   		<?php echo form_submit('generate', 'Generate Total Hours','class="btn btn-info btn-sm"'); ?>
   		<?endif;?>
   		<?php echo form_submit('print', 'Print','class="btn btn-primary btn-sm"'); ?>
		<?echo form_close();?>
		<?if($this->is_admin):?>
		<a href="<?=site_url('timekeeping/create_timekeeping')?>" class="btn btn-sm btn-warning">Create Record</a>
		<?endif;?>
<br>
	
	<br />
	<table>
		<tr>
			<?if($this->is_admin):?>
				<th>ID:Employee</th>
			<?endif;?>
		  <th>Date</th>
		  <th>Time Log</th>
		  <th>Total Hour</th>
		  <th>Total Minutes</th>
		  <?if($this->is_admin):?>
		  <th>Action</th>
		  <?endif;?>
		</tr>
		<tbody>
		<?$hours = 0;?>
		<?if($search):?>
			
			<?foreach($search as $obj):?>
				
				<tr>
					<?if($this->is_admin):?>
						<td><?=$obj->empid;?>-<?=$obj->name;?></td>
					<?endif;?>
					
					<td><?=date('m-d-Y',strtotime($obj->date))?></td>
					<td>
						<?if(isset($time_log[$obj->id]) && $time_log[$obj->id] ):?>
							<div class="table-responsive">
								<table>
									<tr>
										<td><strong>IN</strong></td>
										<td><strong>OUT</strong></td>
									</tr>
									<?foreach ($time_log[$obj->id] as $key => $tk):?>
										<tr>
										<?if($tk->logtype== "IN"):?>
											<td><?=date('g:i a',strtotime($tk->time))?></td>
											<td></td>
										<?else:?>
											<td></td>
											<td><?=date('g:i a',strtotime($tk->time))?></td>
										<?endif;?>
										</tr>
									<?endforeach;?>
								</table>
							</div>
						<?endif;?>
					</td>
					<td><?=$obj->hours?></td>
					<td><?=$obj->minutes?></td>
					
					<?if($this->is_admin):?>
					
					<td class="">
						<div class="btn-group">
							<a href="<?=site_url('timekeeping/edit_log/'.$obj->id)?>" class="btn btn-xs btn-success"><i class="fa fa-edit"></i>&nbsp; Edit Log</a>
						</div>
					</td>
					  	

					<?endif;?>

				</tr>
			<?php endforeach; ?>
			
			<tr>
				<td colspan='4' align='right'><b>Total Records</b></td>
				<td><span class='badge'><?=($total_rows) ? $total_rows : 0;?></span></td>
			</tr>
			
		<?else:?>
		<tr>
		<td colspan="5">
			No Record Found.
		</td>
		</tr>
		<?endif;?>
		</tbody>
	</table>
	<?echo isset($links) ? $links : NULL;?>
	</div>
</div>