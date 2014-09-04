<html>
	<head><title>Timekeeping Report</title></head>
	<body>
		<style>
			table
			{ 
				width:100%;
				padding:0px;
				margin:0px;
				font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif;
				font-size: 12;
			}

			table tr td
			{
				padding:0;
				margin:0;
			}

			td.title
			{
				text-align:center;
			}

			td.id_picture
			{
				height: 130px;
				width: 130px;
				border:1px solid #000;
				text-align:center;
			}

			td.underline
			{
				border-bottom:1px solid #000;
			}

			td.all_around
			{
				border:1px solid #000;
			}

			.bold{
				font-weight: bold;
			}

			.italic{
				font-style: italic;
			}
		</style>
		<div>
			<table>
				<tr>
					<td><h4>Go Cloud Asia</h4></td>
				</tr>
				<tr>
					<td><h5>Timekeeping Report</h5></td>
				</tr>
			</table>
		</div>
		<hr/>
		<div>
			<table cellspacing="2" cellpadding="0" >
				<tr>
					<td class="underline bold" align = "center" >Emp. Id</td>
					<td class="underline bold" align = "center" >Name</td>
					<td class="underline bold" align = "center" >Date</td>
					<td class="underline bold" align = "center" >Time Log</td>
					<td width="100" class="underline bold" align = "center" >Total Hour</td>
					<td width="100" class="underline bold" align = "center" >Total Minutes</td>
				</tr>
				<?
					$tot_hours = 0;
					$tot_mins = 0;
				?>
				<?if($search):?>
					<?foreach ($search as $key => $obj):?>
						<?
							$tot_mins += $obj->minutes;
							$tot_hours += $obj->hours;
						?>
						<tr>
							<td><?=$obj->empid?></td>
							<td><?=$obj->name?></td>
							<td><?=date('m-d-Y', strtotime($obj->date))?></td>
							<td>
								<?if(isset($time_log[$obj->id]) && $time_log[$obj->id] ):?>
									<center>
									<div class="table-responsive">
										<table cellspacing="2" cellpadding="0">
											<tr>
												<td class="underline" >IN</td>
												<td class="underline" >OUT</td>
											</tr>
											<?foreach ($time_log[$obj->id] as $key => $tk):?>
												<tr>
												<?if($tk->logtype== "IN"):?>
													<td class="underlinex"> <?=date('g:i a',strtotime($tk->time))?></td>
													<td></td>
												<?else:?>
													<td></td>
													<td class="underlinex"> <?=date('g:i a',strtotime($tk->time))?></td>
												<?endif;?>
												</tr>
											<?endforeach;?>
										</table>
									</div>
									</center>
								<?endif;?>
							</td>
							<td><?=$obj->hours?></td>
							<td><?=$obj->minutes?></td>
						</tr>

						<tr>
							<td class="underline" colspan="6" ></td>
						</tr>	
					<?endforeach;?>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td class="bold" >Totals</td>
						<td class="bold"><?=$tot_hours?></td>
						<td class="bold"><?=$tot_mins?></td>
					</tr>	
				<?endif;?>
			</table>
		</div>
	</body>
</html>