<ul class="nav navbar-nav">
  <li class="<?=$this->router->class=="timekeeping" && $this->router->method=="index" ? 'active' : ''?>"><a href="<?=site_url('timekeeping')?>">Timekeeping</a></li>
  
    <li><a href="<?=site_url('employees')?>">Employees</a></li>
</ul>
