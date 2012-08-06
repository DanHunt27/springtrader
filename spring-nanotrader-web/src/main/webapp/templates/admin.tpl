<div class="span9 columns">
    <div class="tabbable" id="tabs-header">
       <ul class="nav nav-tabs">
         <li class="active"><a href="#tab1" data-toggle="tab">UserData</a></li>
         <li><a href="#tab2" data-toggle="tab">tc Server</a></li>
         <li><a href="#tab3" data-toggle="tab">RabbitMQ</a></li>
         <li><a href="#tab4" data-toggle="tab">SQLFire</a></li>
         <li><a href="#tab5" data-toggle="tab">Hyperic Interface</a></li>
         <li><a href="#tab6" data-toggle="tab">Performance Data</a></li>
       </ul>
    <div class="tab-content" id="tabs-admin">
    <div class="tab-pane active" id="tab1">
        <form class="form-inline">
            <div id="admin-error" class="hide span8 alert alert-block alert-error fade in">
                <a data-dismiss="alert" class="close">x</a>
                <h4 class="alert-heading"><%= translate("ohSnap") %></h4>
                <p></p>
            </div>
            <label><%= translate("enterNumUsers") %>:</label>
            <input type="number" id="user-count" class="span1" maxlength="10">
            <button id="setUsersBtn" class="btn btn-inverse"><%= translate("createUsers") %></button>
         </form>
    </div>
    <div class="tab-pane" id="tab2">
       <form class="form-inline">
            <div id="admin-error" class="hide span8 alert alert-block alert-error fade in">
                <a data-dismiss="alert" class="close">x</a>
                <h4 class="alert-heading"><%= translate("ohSnap") %></h4>
                <p></p>
            </div>
            <button id="killTCServerBtn" class="btn btn-large-fixed"><%= translate("killTCServer") %></button>
            <p>
            <button id="crashTCServerBtn" class="btn btn-large-fixed"><%= translate("crashTCServer") %></button>
            <p>
        </form>
    </div>
    <div class="tab-pane" id="tab3">
       <form class="form-inline">
            <div id="admin-error" class="hide span8 alert alert-block alert-error fade in">
                <a data-dismiss="alert" class="close">x</a>
                <h4 class="alert-heading"><%= translate("ohSnap") %></h4>
                <p></p>
            </div>
            <button id="killRabbitMQBtn" class="btn btn-large-fixed"><%= translate("killRabbitMQ") %></button>
            <p>
            <button id="stopRabbitMQBtn" class="btn btn-large-fixed"><%= translate("stopRabbitMQ") %></button>
            <p>
        </form>
    </div>
    <div class="tab-pane" id="tab4">
       <form class="form-inline">
            <div id="admin-error" class="hide span8 alert alert-block alert-error fade in">
                <a data-dismiss="alert" class="close">x</a>
                <h4 class="alert-heading"><%= translate("ohSnap") %></h4>
                <p></p>
            </div>
            <button id="killSqlFireBtn" class="btn btn-large-fixed"><%= translate("killSQLFire") %></button>
        </form>
    </div>
    <div class="tab-pane" id="tab5">
      <div id="hq-login">
       <form class="form-inline">
          <input type="text" id="hyperic-host" placeholder="Hyperic Host">
		  <input type="text" id="hyperic-user" placeholder="Hyperic user">
		  <input type="text" id="hyperic-pwd" placeholder="Hyperic password">
		  <button id="hypericonnect" type="submit" class="btn btn-inverse">Connect</button>
        </form>
       </div>
       <div id="hq-interface"></div>
    </div>
    <div class="tab-pane" id="tab6">
      <div id="performance-testing">
       <form class="form-inline">
          <label><%= translate("enterNumPerfUsers") %></label>
          <input type="text" id="perf-users" class="span2">
          <p/>
          <label><%= translate("selectDatabase") %></label>
          <select id="perf-db">
            <option value="sqlf">SQLFire</option>
            <option value="nosqlf">Postgres</option>
          </select>
          <p/>
          <label><%= translate("enterNumVMs") %></label>
          <input type="text" id="perf-vms" class="span2">
          <p/>
          <button id="perf-next" type="submit" class="btn">Next</button>
       </form>
      </div>
    </div>
  </div>
</div>
<div class="span9 columns">
    <div id="progress"></div>
    <div id="crashcompleted"></div>
</div>
<div class="row">
    <div class="span12">
        <div class="hide span8 alert alert-block alert-error fade in">
            <a class="close" data-dismiss="alert">&times;</a>
            <h4 class="alert-heading"><%= translate("showIntegerError") %></h4>
        </div>
    </div>
</div>
    