Plivo Ruby Helper Library
---------------------------

Description
~~~~~~~~~~~

The Plivo Ruby helper simplifies the process of making REST calls and generating RESTXML.

See `Plivo Documentation <http://www.plivo.com/docs/>`_ for more information.


GEM Installation
~~~~~~~~~~~~~

    $ sudo gem install plivo


Manual Installation
~~~~~~~~~~~~~~~~~~~~

To use the rake command to build the gem and

**Download the source and run:**
    $ sudo gem install /path/to/plivo/gem

to finish the installation


Usage
~~~~~

To use the Plivo helper library, As shown in example-call.rb,
you will need to specify the AUTH_ID and AUTH_TOKEN, before you can make REST requests.

See `Plivo Documentation <http://www.plivo.com/docs/>`_ for more information.



Files
~~~~~

**lib/plivo.rb:** include this library in your code

**examples/example-call.rb:** example usage of REST Call

**examples/example-bulkcalls.rb:** example usage of REST Bulk Calls

**examples/example-transfercall.rb:** example usage of REST Transfer Live Call

**examples/example-hangupcall.rb:** example usage of REST Hangup Live Call

**examples/example-xml.rb:** example usage of the RESTXML generator

**examples/example-utils.rb:** example usage of utilities



License
-------

The Plivo Ruby Helper Library is distributed under the MPL 1.1 License
