import 'nodes.pp'

file { '/tmp/hello1':
  content => "Hello, world\n",
  }

