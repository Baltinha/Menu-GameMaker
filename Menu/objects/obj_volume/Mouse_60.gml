// scroll pra cima para aumetar a % do volume
if(!global.somOn)
{
	indexVolume++;
	if(indexVolume > vl_max -1)
	{
		indexVolume = 0;
	}
	volume += 1;
	volume.clamp(volume,0,10)
}




