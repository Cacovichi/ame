Before do 
  $driver.start_driver
  @driver.set_wait(WAIT_SECONDS)
end 

After do 
  $driver.driver_quit
end