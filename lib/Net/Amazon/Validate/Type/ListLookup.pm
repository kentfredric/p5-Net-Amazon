# -*- perl -*-
# !!! DO NOT EDIT !!!
# This file was automatically generated.
package Net::Amazon::Validate::Type::ListLookup;

use 5.006;
use strict;
use warnings;

use constant RESPONSEGROUP_VALID_VALUES => {
    'Accessories' => 'valid',
    'BrowseNodes' => 'valid',
    'EditorialReview' => 'valid',
    'Images' => 'valid',
    'ItemAttributes' => 'valid',
    'ItemIds' => 'valid',
    'Large' => 'valid',
    'ListFull' => 'valid',
    'ListInfo' => 'default',
    'ListItems' => 'valid',
    'ListmaniaLists' => 'valid',
    'Medium' => 'valid',
    'OfferSummary' => 'valid',
    'Offers' => 'valid',
    'Request' => 'default',
    'Reviews' => 'valid',
    'SalesRank' => 'valid',
    'Similarities' => 'valid',
    'Small' => 'valid',
    'Tracks' => 'valid',
    'VariationMinimum' => 'valid',
    'VariationSummary' => 'valid',
    'Variations' => 'valid',
};



sub new {
    my ($class , %options) = @_;
    my $self = {
        %options,
    };
    bless $self, $class;
}

sub assert {
    my ($self, $value, $name, $href) = @_;
    die "Unknown type in Net::Amazon::Request constructor: $value" unless defined $href->{$value};
}

sub validate {
    my ($self, $value, $name, $href) = @_;
    if ( ref ($value) eq 'ARRAY' ) {
        $self->assert($_, $name, $href) for (@$value);
    } else {
        $self->assert($value, $name, $href);
    }
}

sub ResponseGroup {
    my ($self, $value) = @_;
    $self->validate($value, "ResponseGroup", (RESPONSEGROUP_VALID_VALUES));
}



1;