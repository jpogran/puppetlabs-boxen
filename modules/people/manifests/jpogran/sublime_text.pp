class people::jpogran::sublime_text (
  $my_sourcedir = $people::jpogran::params::my_sourcedir,
  $my_homedir   = $people::jpogran::params::my_homedir,
  $my_username  = $people::jpogran::params::my_username
) {
  include sublime_text

  sublime_text::package { 'Alignment': source           => 'wbond/sublime_alignment' }
  sublime_text::package { 'BracketHighlighter': source  => 'facelessuser/BracketHighlighter' }
  sublime_text::package { 'FileDiffs': source           => 'colinta/SublimeFileDiffs' }
  sublime_text::package { 'Git': source                 => 'kemayo/sublime-text-git' }
  sublime_text::package { 'Git Gutter': source          => 'jisaacks/GitGutter' }
  sublime_text::package { 'IndentX': source             => 'socsieng/IndentX' }
  sublime_text::package { 'LoremGibson': source         => 'erdostom/LoremGibsonSublime' }
  sublime_text::package { 'MarkdownPreview': source     => 'revolunet/sublimetext-markdown-preview' }
  sublime_text::package { 'MarkdownEditing': source     => 'SublimeText-Markdown/MarkdownEditing' }
  sublime_text::package { 'PowerShell': source          => 'SublimeText/PowerShell' }
  sublime_text::package { 'Pretty JSON': source         => 'dzhibas/SublimePrettyJson' }
  sublime_text::package { 'Pretty Ruby': source         => 'gbaptista/sublime-3-pretty-ruby' }
  sublime_text::package { 'Puppet': source              => 'russCloak/SublimePuppet' }
  sublime_text::package { 'SideBarEnhancements': source => 'titoBouzout/SideBarEnhancements' }
  sublime_text::package { 'Theme - Soda': source        => 'buymeasoda/soda-theme' } # todo: need to get Monkai theme from Soda extracted
  sublime_text::package { 'Trailing Spaces': source     => 'SublimeText/TrailingSpaces' }

  $sublime = "${my_homedir}/Library/Application Support/Sublime Text 3"

  file { "${sublime}/Packages/User":
    ensure => 'directory',
  }
}
