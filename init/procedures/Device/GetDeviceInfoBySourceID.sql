/*
  RETURN DeviceInfo
  ID          VARCHAR(36)  NOT
  SourceID    VARCHAR(36)  NULL
  OS          VARCHAR(36)  NOT
  MAC         VARCHAR(36)  NOT
  IP          VARCHAR(36)  NOT
  HostName    VARCHAR(300) NOT
  Region      VARCHAR(100) NULL
  InstanceID  VARCHAR(100) NULL
*/

DROP PROCEDURE IF EXISTS `GetDevicesInfoBySourceID`;

CREATE PROCEDURE `GetDevicesInfoBySourceID` (_SourceID VARCHAR(100), _OrgID VARCHAR(36))
    #BEGIN#
SELECT
    D.ID,
    D.AssetID,
    D.OS,
    D.MAC,
    D.IP,
    D.HostName,
    D.Region,
    D.InstanceID
FROM Device D
WHERE D.OrganizationID = _OrgID AND D.SourceID = _SourceID;