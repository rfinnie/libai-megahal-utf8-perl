use 5.012000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'AI::MegaHAL::UTF8',
    VERSION_FROM      => 'lib/AI/MegaHAL/UTF8.pm', # finds $VERSION
    PREREQ_PM         => {
        'AI::MegaHAL' => 0,
    },
    ABSTRACT_FROM     => 'lib/AI/MegaHAL/UTF8.pm', # retrieve abstract from module
    AUTHOR            => 'Ryan Finnie <ryan@finnie.org>',
);
