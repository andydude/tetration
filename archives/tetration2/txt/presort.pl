#!/usr/bin/perl

sub main {
    local($/, $c);
    $c = <>;

    $c =~ s/\}\,[^\{]*\{/\n/g    ;
    $c =~ s/\}\}[^\{]*\{\{/\n/g  ;
    $c =~ s/\{\{//g              ;
    $c =~ s/\}\}//g              ;
    $c =~ s/\,/\t/g              ;
    $c =~ s/\n\ \ //g            ;

    $c =~ s/0\.99999999[0-9]*/1/g ;
    $c =~ s/1\.99999999[0-9]*/2/g ;
    $c =~ s/2\.99999999[0-9]*/3/g ;
    $c =~ s/3\.99999999[0-9]*/4/g ;
    $c =~ s/4\.99999999[0-9]*/5/g ;
    $c =~ s/5\.99999999[0-9]*/6/g ;
    $c =~ s/6\.99999999[0-9]*/7/g ;
    $c =~ s/7\.99999999[0-9]*/8/g ;
    $c =~ s/8\.99999999[0-9]*/9/g ;

    $c =~ s/0999999999[0-9]*/1/g ;
    $c =~ s/1999999999[0-9]*/2/g ;
    $c =~ s/2999999999[0-9]*/3/g ;
    $c =~ s/3999999999[0-9]*/4/g ;
    $c =~ s/4999999999[0-9]*/5/g ;
    $c =~ s/5999999999[0-9]*/6/g ;
    $c =~ s/6999999999[0-9]*/7/g ;
    $c =~ s/7999999999[0-9]*/8/g ;
    $c =~ s/8999999999[0-9]*/9/g ;
    
    $c =~ s/1000000000[0-9]*/1/g ;
    $c =~ s/2000000000[0-9]*/2/g ;
    $c =~ s/3000000000[0-9]*/3/g ;
    $c =~ s/4000000000[0-9]*/4/g ;
    $c =~ s/5000000000[0-9]*/5/g ;
    $c =~ s/6000000000[0-9]*/6/g ;
    $c =~ s/7000000000[0-9]*/7/g ;
    $c =~ s/8000000000[0-9]*/8/g ;
    $c =~ s/9000000000[0-9]*/9/g ;

    $c =~ s/([0-9])\.([^0-9])/\1\2/g ;

    $c =~ s/Overflow\[\]/Overflow/g ;

    $c =~ s/\`[0-9\.]*\*\^/ E/g ;
    $c =~ s/\*\^/ E/g ;

    print $c;
}

main();