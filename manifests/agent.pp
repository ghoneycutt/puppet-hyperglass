# @summary installs the hyperglass linux agent
#
# @see https://github.com/checktheroads/hyperglass-agent
#
# @author Tim Meusel <tim@bastelfrek.de>
class hyperglass::agent {
  include hyperglass::hyperglassdir
  contain hyperglass::agent::install
  Class['hyperglass::hyperglassdir']
  -> Class['hyperglass::agent::install']
}
