<!-- BEGIN: submenu -->
   <ul class="sub-menu">
          <!-- BEGIN: loop -->
		  <li><a href="{SUBMENU.link}"><i class="fa fa-angle-right"></i> {SUBMENU.title_trim}</a></li>
			 <!-- END: loop -->
          </ul>
<!-- END: submenu -->
<!-- BEGIN: main -->
      <nav class="wsmenu clearfix">
        <ul class="wsmenu-list">

      	<!-- BEGIN: top_menu -->
        <li><a  href="{TOP_MENU.link}" title="{TOP_MENU.title}" {TOP_MENU.current}>{TOP_MENU.title_trim}<!-- BEGIN: has_sub --><span class="wsarrow"></span><!-- END: has_sub --></a>
				<!-- BEGIN: sub -->
                {SUB}
                <!-- END: sub -->
       
        </li>
		<!-- END: top_menu -->

        </ul>
      </nav>

<!-- END: main -->
