<!-- Navbar -->
<nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-dark bg-info py-2">
    <div class="container">
        <a class="navbar-brand mr-lg-5" href="{{base_url()}}">
            <img src="{{base_url('assets')}}/img/brand/kl_logo_small.jpg">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
            aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
            <div class="navbar-collapse-header">
                <div class="row">
                    <div class="col-6 collapse-brand">
                        <a href="{{base_url()}}">
                            <img src="{{base_url('assets')}}/img/brand/main_logo.jpg">
                        </a>
                    </div>
                    <div class="col-6 collapse-close">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global"
                            aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
            <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                {{if $smarty.session.privilege >0}}
                    <li class="nav-item nav-link">
                        <i class="bi bi-person-circle"></i>
                        {{$allschool[$smarty.session.schoolid].schoolfullname}}
                        {{$smarty.session.realname}}
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                            <i class="bi bi-gear"></i>
                            <span class="nav-link-inner--text">??????</span>
                        </a>
                        <div class="dropdown-menu">
                            <a href="{{base_url('/admin/user/view')}}/{{$smarty.session.user_id}}" class="dropdown-item"><i class="bi bi-person-badge"></i> ????????????</a>
                            <a href="{{base_url('/booking/status')}}/{{$smarty.session.schoolid}}" class="dropdown-item"><i class="bi bi-clipboard-data"></i> ??????????????????</a>
                            {{if $smarty.session.privilege>1}}
                            <a href="{{base_url('/booking/schoolstat')}}" class="dropdown-item border-top"><i class="bi bi-bar-chart"></i> ??????????????????</a>
                            <a href="{{base_url('/booking/datetimestat')}}" class="dropdown-item "><i class="bi bi-geo-alt"></i> ??????????????????</a>
                            <!--<a href="{{base_url('/booking/datetimenum')}}" class="dropdown-item "><i class="bi bi-geo-alt"></i> ????????????????????????</a>-->
                            <a href="{{base_url('/admin/user/list')}}" class="dropdown-item "><i class="bi bi-people"></i> ???????????????</a>
                            <a href="{{base_url('/admin/school/list')}}" class="dropdown-item"><i class="bi bi-building"></i> ????????????</a>
                            <a href="{{base_url('/admin/itemmanager/list')}}" class="dropdown-item"><i class="bi bi-calendar-check"></i> ????????????????????????</a>
                            {{/if}}
                            {{if $smarty.session.privilege>2}}
                                <a href="{{base_url('/admin/param/list')}}" class="dropdown-item border-top"><i class="bi bi-tools"></i> ????????????</a>
                            {{/if}}
                        </div>
                    </li>
                {{else}}
                    <li class="nav-item nav-link">
                        <i class="bi bi-person-circle"></i>
                        ??????
                    </li>
                {{/if}}
            </ul>

            <ul class="navbar-nav align-items-lg-center ml-lg-auto">
                <li class="nav-item">
                    <a class="nav-link nav-link-icon" href="{{base_url()}}" data-toggle="tooltip" title="??????">
                        <i class="bi bi-house"></i>
                        <span class="nav-link-inner--text">??????</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-icon" href="{{base_url()}}#about" data-toggle="tooltip" title="??????">
                        <i class="bi bi-bookmark"></i>
                        <span class="nav-link-inner--text">??????</span>
                    </a>
                </li>
                {{if $smarty.session.privilege > 0}}
                    <li class="nav-item">
                        <a class="nav-link nav-link-icon" href="{{base_url('/admin')}}" data-toggle="tooltip" title="??????">
                            <i class="bi bi-pencil-square"></i>
                            <span class="nav-link-inner--text">??????</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-icon" href="{{base_url('/auth/logout')}}" data-toggle="tooltip"
                            title="??????">
                            <i class="bi bi-box-arrow-right"></i>
                            <span class="nav-link-inner--text">??????</span>
                        </a>
                    </li>
                {{else}}
                    <li class="nav-item">
                        <a class="nav-link nav-link-icon" href="{{base_url('/auth')}}" data-toggle="tooltip" title="???????????????">
                            <i class="bi bi-person-square"></i>
                            <span class="nav-link-inner--text">??????</span>
                        </a>
                    </li>
                {{/if}}
            </ul>
        </div>
    </div>
</nav>
<!-- End Navbar -->