<div class="modal fade" id="detailModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h4 class="modal-title">CPU Scenarios 1 Detail</h4>
      </div>

      <div class="modal-body">
        <div class="row">  
          <div class="col-md-5" >
            <table class="table table-condensed">
            <tr>
              <td><strong>Test History : </strong></td>
              <td>
                <select id="selectList" onChange="selectRelateData(this)" style="text-align:center"> 
                  <option value='-1'>   ---   Please Choose   ---   </option>
                </select>
              </td>
            </tr>
            <tr>
               <td><strong>Jenkins Page: </strong></td>
               <td>${detail.jenkins}</td>
            </tr>
            
            <tr>
               <td><strong>Operation System: </strong></td>
               <td>${detail.os}</td>
            </tr>
            
            <tr>
                <td><strong>TPS : </strong></td>
                <td>${detail.result}</td>
            </tr>
                      
            <tr>
                <td><strong>Executed Date: </strong></td>
                <td>${detail.created}</td>
            </tr>
                 
            </table>            
          </div>
            
          <div class="col-md-7" >
            <div id="myCarousel" class="carousel" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
              </ol>
              <div class="carousel-inner">
                <div class="item">
                  <img src="${ctx}/static/report/CPU.png" alt="First slide">
                </div>
        
                <div class="item">
                  <img src="${ctx}/static/report/DiskIO.png" alt="Second slide">
                </div>
        
                <div class="item active">
                  <img src="${ctx}/static/report/Memory.png" alt="Second slide">
                </div>
              </div>
              <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
              <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div><!-- /.carousel -->
          </div> 
        </div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
