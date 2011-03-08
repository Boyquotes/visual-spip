echo "<?php
//
// Include the GeSHi library//
include_once './geshi/geshi.php'; 

// Create a GeSHi object//
\$geshi2 = new GeSHi(\$source, \$language);

	 \$geshi2->set_header_type(GESHI_HEADER_PRE_VALID);
	// \$geshi2->enable_classes();
     \$geshi2->enable_line_numbers(GESHI_LINE_NUMBERS_NONE);
     \$geshi2->set_overall_style('font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;', false);
    \$geshi2->set_line_style('color: #003030;', 'font-weight: bold; color: #003030;', true);
    \$geshi2->set_code_style('color: #000020;', true);

    \$geshi2->set_header_content_style('font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;');

    // You can use <TIME> and <VERSION> as placeholders
    \$geshi2->set_footer_content_style('font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;');
?>" >> tmp/spip/page-$1-$h.php
