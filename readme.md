red5-server - Red5 server core

TravisCI Maven Central PRs Welcome

Red5 is an Open Source Flash Server written in Java that supports:

    Streaming Video (FLV, F4V, MP4, 3GP)
    Streaming Audio (MP3, F4A, M4A, AAC)
    Recording Client Streams (FLV and AVC+AAC in FLV container)
    Shared Objects
    Live Stream Publishing
    Remoting
    Protocols: RTMP, RTMPT, RTMPS, and RTMPE

The Red5 users list may be found here: red5interest

Subreddit: r/red5

Automatic builds (Courtesy of Apache OpenMeetings):

    Red5
    Windows Installer

Releases
Previous releases

Note on Bootstrap

The bootstrap and shutdown classes have been moved to the red5-service project; the dependency has been added to this projects pom.
StackOverflow

If you want answers from a broader audience, Stack Overflow may be your best bet.
Maven

Releases are available at Sonatype - Releases

Snapshots are available at Sonatype - Snapshots

Include the red5-parent in your pom.xml in the dependencyManagement section

<dependencyManagement>
    <dependencies>
      <dependency>
          <groupId>org.red5</groupId>
          <artifactId>red5-parent</artifactId>
          <version>${red5.version}</version>
          <type>pom</type>
      </dependency>
    </dependencies>
</dependencyManagement>  

in addition to any other Red5 projects in the dependencies section

  <dependency>
      <groupId>org.red5</groupId>
      <artifactId>red5-server</artifactId>
      <version>${red5.version}</version>
      <type>jar</type>
  </dependency>

Build from Source

As of release 1.2.2 the target JDK is now JDK 11 and the Maven poms use the toolchain plugin.

To build the red5 jars, execute the following on the command line:

mvn -Dmaven.test.skip=true install

This will create the jars in the "target" directory of the workspace; this will also skip the unit tests.

To package everything up in an assembly (tarball/zip):

mvn -Dmaven.test.skip=true clean package -P assemble

To build a milestone tarball:

mvn -Dmilestone.version=1.0.7-M1 clean package -Pmilestone

Eclipse

    Create the eclipse project files, execute this within red5-server directory.

mvn eclipse:eclipse

    Import the project into Eclipse.
    Access the right-click menu and select "Configure" and then "Convert to Maven Project".
    Now the project will build automatically, if you have the maven plugin installed.

Screencast

Features supported via plugin (These are mostly deprecated):

    WebSocket (ws and wss)
    RTSP (From Axis-type cameras)
    HLS

Older Releases

The artifacts for the following releases are no longer available; if your project requires them, you'll have to build them from source. The listings are here only for historical purposes.

    Red5 1.2.2 Release (5 September 2019)
    Red5 1.1.1 Release (29 May 2019)
    Red5 1.1.0 Release (22 April 2019)
    Red5 1.0.10 Release (9 February 2019)
    Red5 1.0.9 Release (11 June 2017)
    Red5 1.0.8 Release (23 December 2016)
    Red5 1.0.7 Release (12 May 2016)
    Red5 1.0.6 Release (8 September 2015)
    Red5 1.0.5 Release (7 February 2015)
    Red5 1.0.4 Release (26 December 2014)
    Red5 1.0.3 Release (5 August 2014)
    Red5 1.0.2 Release (9 April 2014)
    Red5 1.0.2 Snapshot (18 April 2013)
    Red5 1.0.1 Final (14 January 2013)
    Red5 1.0 Final (03 December 2012)
    Red5 0.9.1 Final (21 February 2010)
    Red5 0.9.0 Final (27 January 2010)
    Red5 0.8.0 Final

Donations

Donate to the cause using
