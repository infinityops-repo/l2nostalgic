/*
 * This file is part of the L2J Mobius project.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package handlers.skillconditionhandlers;

import java.util.List;

import org.l2jmobius.gameserver.model.StatSet;
import org.l2jmobius.gameserver.model.WorldObject;
import org.l2jmobius.gameserver.model.actor.Creature;
import org.l2jmobius.gameserver.model.item.ItemTemplate;
import org.l2jmobius.gameserver.model.item.type.WeaponType;
import org.l2jmobius.gameserver.model.skill.ISkillCondition;
import org.l2jmobius.gameserver.model.skill.Skill;

/**
 * @author Sdw
 */
public class EquipWeaponSkillCondition implements ISkillCondition
{
	private int _weaponTypesMask = 0;
	
	public EquipWeaponSkillCondition(StatSet params)
	{
		final List<WeaponType> weaponTypes = params.getEnumList("weaponType", WeaponType.class);
		if (weaponTypes != null)
		{
			for (WeaponType weaponType : weaponTypes)
			{
				_weaponTypesMask |= weaponType.mask();
			}
		}
	}
	
	@Override
	public boolean canUse(Creature caster, Skill skill, WorldObject target)
	{
		final ItemTemplate weapon = caster.getActiveWeaponItem();
		return (weapon != null) && ((weapon.getItemMask() & _weaponTypesMask) != 0);
	}
}
