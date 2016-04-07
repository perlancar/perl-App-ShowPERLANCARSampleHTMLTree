package App::ShowPERLANCARSampleHTMLTree;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use PERLANCAR::HTML::Tree::Examples qw(gen_sample_data);

our %SPEC;

$SPEC{show_perlancar_sample_html_tree} = {
    v => 1.1,
    summary => 'Show sample HTML from PERLANCAR::HTML::Tree::Examples',
    args => {
        size => {
            schema => $PERLANCAR::HTML::Tree::Examples::SPEC{gen_sample_html}{args}{size}{schema},
            req => 1,
            pos => 0,
        },
    },
    result_naked => 1,
    'cmdline.skip_format' => 1,
};
sub show_perlancar_sample_html_tree {
    my %args = @_;

    gen_sample_data(size => $args{size});
}

1;
# ABSTRACT:
