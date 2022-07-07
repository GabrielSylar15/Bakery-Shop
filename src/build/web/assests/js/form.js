CKEDITOR.replace('Description', {
    extraPlugins: 'editorplaceholder',
    editorplaceholder: 'Write your description here...',
    removeButtons: 'PasteFromWord'
});
$("document").ready(function () {
    $("#filterTable").dataTable({
        "searching": true
    });
    //Get a reference to the new datatable
    var table = $('#filterTable').DataTable();
    //Take the category filter drop down and append it to the datatables_filter div. 
    //You can use this same idea to move the filter anywhere withing the datatable that you want.
    $("#gender").insertBefore($("#filterTable_filter.dataTables_filter"));
    $("#status").insertBefore($("#filterTable_filter.dataTables_filter"));
    $("#role").insertBefore($("#filterTable_filter.dataTables_filter"));
    //Get the column index for the Category column to be used in the method below ($.fn.dataTable.ext.search.push)
    //This tells datatables what column to filter on when a user selects a value from the dropdown.
    //It's important that the text used here (Category) is the same for used in the header of the column to filter
    var categoryIndex = 0;
    $("#filterTable th").each(function (i) {
        if ($($(this)).html() == "Gender") {
            categoryIndex = i;
            return false;
        }
    });
    var statusIndex = 0;
    $("#filterTable th").each(function (i) {
        if ($($(this)).html() == "Status") {
            statusIndex = i;
            return false;
        }
    });
    var roleIndex = 0;
    $("#filterTable th").each(function (i) {
        if ($($(this)).html() == "Role") {
            statusIndex = i;
            return false;
        }
    });

    //Use the built in datatables API to filter the existing rows by the Category column
    $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var selectedItem = $('#gender').val()
                var category = data[categoryIndex];
                if (selectedItem === "" || category.includes(selectedItem)) {
                    return true;
                }
                return false;
            }
    );
    $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var selectedItem = $('#status').val()
                var status = data[statusIndex];
                if (selectedItem === "" || status.includes(selectedItem)) {
                    return true;
                }
                return false;
            }
    );
    $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var selectedItem = $('#role').val()
                var role = data[statusIndex];
                if (selectedItem === "" || role.includes(selectedItem)) {
                    return true;
                }
                return false;
            }
    );

    //Set the change event for the Category Filter dropdown to redraw the datatable each time
    //a user selects a new filter.
    $("#gender").change(function (e) {
        table.draw();
    });
    $("#status").change(function (e) {
        table.draw();
    });
    $("#role").change(function (e) {
        table.draw();
    });

    table.draw();
});


function myFunction() {
    let title = document.forms["formInsert"]["title"].value;
    let brief = document.forms["formInsert"]["briefInformation"].value;
    let Description = document.forms["formInsert"]["Description"].value;
    let thumbnail = document.forms["formInsert"]["thumbnail"].value;
    let category = document.forms["formInsert"]["postCategoryID"].value;
    let status = document.forms["formInsert"]["status"].value;
    if (title == "" || brief == "" || Description == "" || thumbnail == "" || category == "" || status == "") {
        alert("All content must be filled out");
        return false;
    }
}
function myFunction2() {
    let title = document.forms["formEdit"]["title"].value;
    let brief = document.forms["formEdit"]["briefInformation"].value;
    let Description = document.forms["formEdit"]["Description"].value;
    let category = document.forms["formEdit"]["postCategoryID"].value;
    let status = document.forms["formEdit"]["status"].value;
    if (title == "" || brief == "" || Description == "" || category == "" || status == "") {
        alert("All content must be filled out");
        return false;
    }
}
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#imageResult')
                    .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    }
}

$(function () {
    $('#upload').on('change', function () {
        readURL(input);
    });
});
var input = document.getElementById('upload');
var infoArea = document.getElementById('upload-label');

input.addEventListener('change', showFileName);

function showFileName(event) {
    var input = event.srcElement;
    var fileName = input.files[0].name;
    infoArea.textContent = 'File name: ' + fileName;
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


