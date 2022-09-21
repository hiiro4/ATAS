/* global $*/
  $(document).ready(function(){
    $(document).on('change', '#question_subject_id', function() {
      let categoryVal = $('#question_subject_id').val();
      if (categoryVal !== "") {
        let selectedTemplate = $(`#child_subject_category_${categoryVal}`);
        $("#child_subject_category").hide()
        $("#question_subject_id").after(selectedTemplate.html());
      };
    });
  });
//'#child_subject_insert_point .active'
//$('#child_subject_insert_point[class != "active"]').hide();
//$("#child_subject_insert_point .active").removeClass("active");
//$(selectedTemplate).addClass("active");
//('#question_subject_id').after(selectedTemplate.html());
//$("#child_subject_category").remove
