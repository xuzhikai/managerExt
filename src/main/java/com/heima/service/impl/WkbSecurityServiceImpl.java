package com.heima.service.impl;

import com.heima.model.WkbUser;
import com.heima.service.WkbSecurityService;
import com.heima.service.WkbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 * Created with (TC).
 * User: 徐志凯
 * Date: 14-5-6
 * 橡果国际-系统集成部
 * Copyright (c) 2012-2013 ACORN, Inc. All rights reserved.
 */
@Service
public class WkbSecurityServiceImpl implements WkbSecurityService {

    @Autowired
    private WkbUserService wkbUserService;

    @Override
    public WkbUser getCurrentUser() {
        if(SecurityContextHolder.getContext()!=null&&SecurityContextHolder.getContext().getAuthentication()!=null)
        {
            Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            if(principal instanceof WkbUserDetails)
            {
                return wkbUserService.getUser( Integer.parseInt(((WkbUserDetails)principal).getUsername()));
            }
            else if(principal instanceof WkbUser)
                return (WkbUser)principal;
        }
        return null;
    }

    @Override
    public boolean isAdmin() {
        WkbUser wkbUser=this.getCurrentUser();
        if(wkbUser!=null)
        {
            wkbUser=wkbUserService.getUser(wkbUser.getuId());
            if(wkbUser.getuAdmin()!=null)
            {
                if(wkbUser.getuAdmin().intValue()==1||wkbUser.getuAdmin().intValue()==2)
                    return true;
            }
        }
        return false;
    }
}
