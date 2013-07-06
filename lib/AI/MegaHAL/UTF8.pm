package AI::MegaHAL::UTF8;

use 5.012000;
use strict;
use warnings;
use parent 'AI::MegaHAL';
use Encode qw/encode_utf8 decode_utf8/;

sub do_reply {
  my $self = shift;
  my $in = shift || '';
  return decode_utf8($self->SUPER::do_reply(encode_utf8($in)));
}

sub learn {
  my $self = shift;
  my $in = shift || '';
  return decode_utf8($self->SUPER::learn(encode_utf8($in)));
}

sub initial_greeting {
  my $self = shift;
  return decode_utf8($self->SUPER::initial_greeting());
}

1;
__END__

=head1 NAME

AI::MegaHAL::UTF8 - UTF-8 safe AI::MegaHAL

=head1 SYNOPSIS

  use AI::MegaHAL::UTF8;

  my $megahal = AI::MegaHAL::UTF8->new(
    'Path'     => './',
    'Banner'   => 0,
    'Prompt'   => 0,
    'Wrap'     => 0,
    'AutoSave' => 0
  );

  my $text = $megahal->initial_greeting();

  $text = $megahal->do_reply($message);

  $megahal->learn($message);

=head1 DESCRIPTION

This module wraps AI::MegaHAL to make it safely handle native Perl
multibyte characters.  It does this by converting to UTF8, running
through AI::MegaHAL, then converting back to native format before being
returned.

=head1 SEE ALSO

AI::MegaHAL

=head1 AUTHOR

Ryan Finnie, E<lt>ryan@finnie.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Ryan Finnie

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.12.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
