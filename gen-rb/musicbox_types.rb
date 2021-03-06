#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


class InternalError < ::Thrift::Exception
  include ::Thrift::Struct, ::Thrift::Struct_Union

  FIELDS = {

  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class ProfileData
  include ::Thrift::Struct, ::Thrift::Struct_Union
  PROFILEID = 1
  USERID = 2
  PHONENUMBER = 3
  REGISTRATIONDATE = 4
  SESSIONID = 5
  UNKNOWN = 6
  SUBSCRIPTIONSTATUS = 7
  CHANNELID = 8
  FIRSTTIMEUSER = 9

  FIELDS = {
    PROFILEID => {:type => ::Thrift::Types::I32, :name => 'profileID'},
    USERID => {:type => ::Thrift::Types::I32, :name => 'userID'},
    PHONENUMBER => {:type => ::Thrift::Types::STRING, :name => 'phoneNumber'},
    REGISTRATIONDATE => {:type => ::Thrift::Types::I64, :name => 'registrationDate'},
    SESSIONID => {:type => ::Thrift::Types::STRING, :name => 'sessionID'},
    UNKNOWN => {:type => ::Thrift::Types::STRING, :name => 'unknown'},
    SUBSCRIPTIONSTATUS => {:type => ::Thrift::Types::STRING, :name => 'subscriptionStatus'},
    CHANNELID => {:type => ::Thrift::Types::I32, :name => 'channelID'},
    FIRSTTIMEUSER => {:type => ::Thrift::Types::BOOL, :name => 'firstTimeUser'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class PlayerData
  include ::Thrift::Struct, ::Thrift::Struct_Union
  SUBSCRIPTIONPERIODEND = 1
  NEXTKEY = 2
  SUBSCRIPTIONNUMBEROFFREESTREAMSLEFT = 3
  SUBSCRIPTIONNUMBEROFFREETRACKSLEFT = 4
  SUBSCRIPTIONVALIDFORSTREAMING = 5
  FILEDELIVERYHOST = 6

  FIELDS = {
    SUBSCRIPTIONPERIODEND => {:type => ::Thrift::Types::I64, :name => 'subscriptionPeriodEnd'},
    NEXTKEY => {:type => ::Thrift::Types::STRING, :name => 'nextKey'},
    SUBSCRIPTIONNUMBEROFFREESTREAMSLEFT => {:type => ::Thrift::Types::I32, :name => 'subscriptionNumberOfFreeStreamsLeft'},
    SUBSCRIPTIONNUMBEROFFREETRACKSLEFT => {:type => ::Thrift::Types::I32, :name => 'subscriptionNumberOfFreeTracksLeft'},
    SUBSCRIPTIONVALIDFORSTREAMING => {:type => ::Thrift::Types::BOOL, :name => 'subscriptionValidForStreaming'},
    FILEDELIVERYHOST => {:type => ::Thrift::Types::STRING, :name => 'fileDeliveryHost'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class RecordLabelData
  include ::Thrift::Struct, ::Thrift::Struct_Union
  RECORDLABEL = 1
  RECORDLABELID = 2
  RECORDPROVIDER = 3
  RECORDPROVIDERID = 4
  RECORDSUBLABEL = 5
  RECORDSUBLABELID = 6

  FIELDS = {
    RECORDLABEL => {:type => ::Thrift::Types::STRING, :name => 'recordLabel'},
    RECORDLABELID => {:type => ::Thrift::Types::I32, :name => 'recordLabelID'},
    RECORDPROVIDER => {:type => ::Thrift::Types::STRING, :name => 'recordProvider'},
    RECORDPROVIDERID => {:type => ::Thrift::Types::I32, :name => 'recordProviderID'},
    RECORDSUBLABEL => {:type => ::Thrift::Types::STRING, :name => 'recordSublabel'},
    RECORDSUBLABELID => {:type => ::Thrift::Types::I32, :name => 'recordSublabelID'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class TrackData
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TITLE = 1
  ARTIST = 2
  ARTISTID = 3
  ALBUMID = 4
  ALBUM = 5
  UNKOWN1 = 6
  DURATION = 7
  TINYALBUMCOVER = 8
  SMALLALBUMCOVER = 9
  LARGEALBUMCOVER = 10
  TRACKID = 11
  UNKNOWN2 = 12
  TRACKNUMBER = 13
  VOLUMENUMBER = 14
  UNKNOWN3 = 15
  SALESSTARTDATE = 16
  UNKNOWN4 = 17
  UNKNOWN5 = 18
  PRICE = 19
  UNKOWN6 = 20
  UNKOWN7 = 21
  UNKNOWN8 = 22
  UNKNOWN9 = 23
  ALBUMCALCULATEDPRICE = 24
  UNKNOWN10 = 25
  ALBUMNROFVOLUMES = 26
  POPULARITYTHISWEEK = 27
  SALESPRICERULEID = 28
  SEARCHSCORE = 29
  RECORDLABEL = 30
  UNKNOWN11 = 31
  STREAMSTARTDATE = 32

  FIELDS = {
    TITLE => {:type => ::Thrift::Types::STRING, :name => 'title'},
    ARTIST => {:type => ::Thrift::Types::STRING, :name => 'artist'},
    ARTISTID => {:type => ::Thrift::Types::I32, :name => 'artistID'},
    ALBUMID => {:type => ::Thrift::Types::I32, :name => 'albumID'},
    ALBUM => {:type => ::Thrift::Types::STRING, :name => 'album'},
    UNKOWN1 => {:type => ::Thrift::Types::STRING, :name => 'unkown1'},
    DURATION => {:type => ::Thrift::Types::I32, :name => 'duration'},
    TINYALBUMCOVER => {:type => ::Thrift::Types::STRING, :name => 'tinyAlbumCover'},
    SMALLALBUMCOVER => {:type => ::Thrift::Types::STRING, :name => 'smallAlbumCover'},
    LARGEALBUMCOVER => {:type => ::Thrift::Types::STRING, :name => 'largeAlbumCover'},
    TRACKID => {:type => ::Thrift::Types::I32, :name => 'trackID'},
    UNKNOWN2 => {:type => ::Thrift::Types::STRING, :name => 'unknown2'},
    TRACKNUMBER => {:type => ::Thrift::Types::I32, :name => 'trackNumber'},
    VOLUMENUMBER => {:type => ::Thrift::Types::I32, :name => 'volumeNumber'},
    UNKNOWN3 => {:type => ::Thrift::Types::STRING, :name => 'unknown3'},
    SALESSTARTDATE => {:type => ::Thrift::Types::I64, :name => 'salesStartDate'},
    UNKNOWN4 => {:type => ::Thrift::Types::BOOL, :name => 'unknown4'},
    UNKNOWN5 => {:type => ::Thrift::Types::BOOL, :name => 'unknown5'},
    PRICE => {:type => ::Thrift::Types::DOUBLE, :name => 'price'},
    UNKOWN6 => {:type => ::Thrift::Types::STRING, :name => 'unkown6'},
    UNKOWN7 => {:type => ::Thrift::Types::BOOL, :name => 'unkown7'},
    UNKNOWN8 => {:type => ::Thrift::Types::BOOL, :name => 'unknown8'},
    UNKNOWN9 => {:type => ::Thrift::Types::STRING, :name => 'unknown9'},
    ALBUMCALCULATEDPRICE => {:type => ::Thrift::Types::STRING, :name => 'albumCalculatedPrice'},
    UNKNOWN10 => {:type => ::Thrift::Types::BOOL, :name => 'unknown10'},
    ALBUMNROFVOLUMES => {:type => ::Thrift::Types::I32, :name => 'albumNrOfVolumes'},
    POPULARITYTHISWEEK => {:type => ::Thrift::Types::I32, :name => 'popularityThisWeek'},
    SALESPRICERULEID => {:type => ::Thrift::Types::I32, :name => 'salesPriceRuleID'},
    SEARCHSCORE => {:type => ::Thrift::Types::DOUBLE, :name => 'searchScore'},
    RECORDLABEL => {:type => ::Thrift::Types::STRUCT, :name => 'recordLabel', :class => RecordLabelData},
    UNKNOWN11 => {:type => ::Thrift::Types::I32, :name => 'unknown11'},
    STREAMSTARTDATE => {:type => ::Thrift::Types::I64, :name => 'streamStartDate'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

