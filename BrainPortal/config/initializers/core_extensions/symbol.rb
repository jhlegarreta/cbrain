
#
# CBRAIN Project
#
# Copyright (C) 2008-2012
# The Royal Institution for the Advancement of Learning
# McGill University
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.  
#

###################################################################
# CBRAIN Symbol extensions
###################################################################
class Symbol

  # Used by views for CbrainTasks to transform a
  # symbol such as :abc into a path to a variable
  # inside the params[] hash, as "cbrain_task[params][abc]".
  #
  # CBRAIN adds a similar method in the String class.
  def to_la
    "cbrain_task[params][#{self}]"
  end

  # Used by views for CbrainTasks to transform a
  # symbol such as :abc (representing a path to a
  # variable inside the params[] hash) into the name
  # of a pseudo accessor method for that variable.
  # This is also the name of the input field's HTML ID
  # attribute, used for error validations.
  #
  # CBRAIN adds a similar method in the String class.
  def to_la_id
    self.to_s.to_la_id
  end

end
