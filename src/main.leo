// A basic sample resolver program
import zns_registry.leo
program zns_resolver.aleo {
    struct domainName{
        tld : u128,
        name : u128,
        subname : u128,
    }
    mapping default : domainName => address

    transition simple_resolver() -> address{
        let me : address = aleo1g277jzqty5txe9tfgccxapjc89pazdc9en58csqxevsfhcd49spsf3rjp7;
        return me;
    }

    transition global_resolver(name : domainName){
        return default.get(name);
    }
}
