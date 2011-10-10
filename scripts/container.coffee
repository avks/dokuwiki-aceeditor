# Ace editor plugin for Dokuwiki
# Copyright © 2011 Institut Obert de Catalunya
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# Ths program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

define -> ->

  wrapper = jQuery('<div>')
    .addClass('ace-doku')
    .insertBefore(jQuery '#wiki__text')
    .hide()

  element = jQuery('<div>').appendTo(wrapper)

  element: -> element.get 0

  hide: -> wrapper.hide()

  incr_height: (value) ->
    wrapper.css 'height', (wrapper.height() + value) + 'px'
    element.css 'height', wrapper.height() + 'px'

  on_resize: ->
    element.css 'width', wrapper.width() + 'px'

  set_height: (value) ->
    wrapper.css 'height', value + 'px'
    element.css 'height', wrapper.height() + 'px'

  show: ->
    wrapper.show()
    element.css 'width', wrapper.width() + 'px'
    element.css 'height', wrapper.height() + 'px'