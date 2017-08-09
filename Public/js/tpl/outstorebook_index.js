﻿var d = 0;
var e = 1;
function getRow(g, h) {
    var i = "<tr align='center' id='row_" + g + "'>" +
        "<td align='center'>" + h + "</td>" +
        "<td align='center'><input type='text' name='oss_prodname[]' id='oss_prodname_" + g + "' size='20' onfocus='clearTip(this)'  onblur='fillTip(this)' value='请输入关键字或空格' style='color:#CCC'/></td>" +
		
		"<td align='center'><input name='oss_code[]' type='text' id='oss_code_" + g + "' size='25' disabled /></td>" +
		
        "<td align='center'><input type='text' id='oss_cate_name_" + g + "' size='8' disabled/></td>" +

        "<td align='center'><input type='text' name='oss_quality[]' id='oss_quality_" + g + "' size='8'  Readonly>"+
        "</input>" +"</td>" +

        "<td align='center'><input name='oss_unit[]' type='text' id='oss_unit_" + g + "' size='8' disabled /></td>" +
		
		"<td align='center'><input name='oss_life[]' type='text' id='oss_life_" + g + "' size='8' disabled /></td>" +
		
		"<td align='center'><input name='oss_make_date[]' type='text' id='oss_make_date_" + g + "' size='10' readonly /></td>" +

        "<td align='center'><input name='oss_plancount[]' type='text' id='oss_plancount_" + g + "' size='8' /></td>" +
        "<td align='center'><input name='oss_count[]' type='text' id='oss_count_" + g + "' size='8' onblur='compute(" + g + ")'/></td>" +


        "<input name='oss_total[]' type='hidden' id='oss_total_" + g + "' size='8'/>" +
        "<td align='center'>" + "<input name='oss_store_name[]' id='oss_store_name_" + g + "' size='16' disabled/>" + "</td>" +

        "<td align='center'><a href='#' name='linkDelete' onclick='deleteRow(" + g + ")'>删除</a></td>" +
        "<input name='oss_insubid[]' type='hidden' id='oss_insubid_" + g + "' size='17'/>" +
        "<input name='row_count[]' type='hidden' value='" + g + "'>" +
        "<input name='oss_cate[]' id='oss_cate_" + g + "' type='hidden'>" +
		"<input name='oss_store_id[]' id='oss_store_id_" + g + "' type='hidden'>" +
        "<input name='oss_prod[]' id='oss_prod_" + g + "' type='hidden'>" + "</tr>";
    return i
};
$("#btnAdd").click(function () {
    var g = getRow(d, e);
    $("#table").append(g);
    bindAutoComplete(d);
    //bindStore(d);
    //bindQuality(d);
    d++;
    e++
});
function bindStore(g) {
    $.getJSON('./index.php?s=/OutstoreBook/getStore', function (h) {
        $.each(h, function (i, j) {
            $('#oss_store_' + g).append("<option value='" + j.sto_id + "'>" + j.sto_name + "</option>")
        })
    })
};


function deleteRow(g) {
    $("#row_" + g).remove();
    e--
};
function checkName(g) {
    $.get("./index.php?s=/OutstoreBook/checkName/name/" + g, function (h) {
        if (h == "no_exist") {
            alert("不存在此产品，请修改！")
        }
    })
};
function clearTip(g) {
    if ($(g).val() == '请输入关键字或空格') {
        $(g).val('')
    }
};
function fillTip(g) {
    if ($(g).val() == '') {
        $(g).attr('style', 'color:#CCC');
        $(g).val('请输入关键字或空格')
    }
};
$.widget("custom.catcomplete", $.ui.autocomplete, {_renderMenu: function (g, h) {
    var i = this, j = "";
    $.each(h, function (k, l) {
        if (l.category != j) {
            g.append("<li class='ui-autocomplete-category'>" + l.category + "</li>");
            j = l.category
        }
        ;
        i._renderItem(g, l)
    })
}});
function compute(g) {
    $("#oss_total_" + g).val($("#oss_price_" + g).val() * $("#oss_count_" + g).val())
};
function bindAutoComplete(g) {
    var buyer = $("#osm_buyerunit").val();
    $("#oss_prodname_" + g).catcomplete({source: './index.php?s=/OutstoreBook/getProduct/buyer/'+buyer, minLength: 1, delay: 0, select: function (h, i) {
        $("#oss_prodname_" + g).attr('style', 'color:#000');

        $("#oss_prod_" + g).val(i.item.iss_prod);
        $("#oss_cate_" + g).val(i.item.iss_cate);
        $("#oss_cate_name_" + g).val(i.item.pdca_name);
        $("#oss_insubid_" + g).val(i.item.iss_id);
		if(i.item.sto_parrent_id==0){
			$("#oss_store_name_" + g).val(i.item.sto_name);
		}else{
			$("#oss_store_name_" + g).val(i.item.sto_name+"/"+i.item.sto_kuwei_name);
		}
		$("#oss_store_id_" + g).val(i.item.sto_id);
		
		$("#oss_quality_" + g).val(i.item.iss_quality);
		
        $("#oss_unit_" + g).val(i.item.prod_unit);
		$("#oss_life_" + g).val(i.item.prod_life);
		$("#oss_code_" + g).val(i.item.prod_code);
		$("#oss_make_date_" + g).val(i.item.oss_make_date);
		
        $("#oss_plancount_" + g).focus()
        //$("#oss_total_" + g).val(i.item.iss_price * 1)
    }})
};
$(".btn").button();

function bindAutoComplete22() {
    $("#osm_buyerunit").catcomplete22({source: './index.php?s=/InstoreBook/autoSelect22', minLength: 1, delay: 0, select: function (g, h) {
        $('#osm_buyerunit').val(h.item.gust_name)
    }})
};
$.widget("custom.catcomplete22", $.ui.autocomplete, {_renderMenu: function (g, h) {
    var i = this, j = "";
    $.each(h, function (k, l) {
        i._renderItem(g, l)
    })
}});
bindAutoComplete22();
$("#osm_danju_date").datepicker();


//add for deliver info
$("#osm_deliver").change(function(){
	var deliverId = $('#osm_deliver').val();
	if (deliverId != ""){
	   	$.getJSON("./index.php?s=/BaseData/getProdDeliverById/pddeliver_id/" + deliverId, function (data) {
			$('#osm_deliver_phone').val(data.pddeliver_phone);
			$('#osm_deliver_address').val(data.pddeliver_address);
			$('#osm_deliver_note').val(data.pddeliver_note);
      })
	}
})