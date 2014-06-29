#! /bin/sh

testTagesschau()
{
    expected=$(md5sum data/tagesschau | awk '{print $1}');

    ../src/rss-enclosure.sh data/tagesschau.rss > $SHUNIT_TMPDIR/testTagesschau

    is=$(md5sum $SHUNIT_TMPDIR/testTagesschau | awk '{print $1}');

    assertEquals $expected $is;
}

. shunit2
